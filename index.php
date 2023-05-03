<?php

require __DIR__."/dbconnect_libraries.php";

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;


if (isset($_GET['export_pdf'])) {
    $html = file_get_contents("pdf.php");
    $dompdf = new \Dompdf\Dompdf();
    $dompdf->set_option('isRemoteEnabled', true);
    $dompdf->loadHtml($html);
    $dompdf->setPaper('A4', 'portrait'); //setPaper('A4', 'landscape');
    $dompdf->render();
    $canvas = $dompdf->get_canvas();
    $canvas->page_text(10, 20, "Page - {PAGE_NUM} of  {PAGE_COUNT}", null, 11, array(0, 0, 0));
    $file_name = rand(10, 10000) . '.pdf';
    $dompdf->stream($file_name);
}

if (isset($_FILES['excelfile'])) {
    $file_name = $_FILES["excelfile"]["name"];
    $file_type = $_FILES["excelfile"]["type"];
    $file_tmpname = $_FILES['excelfile']['tmp_name'];
    $file_size = round($_FILES["excelfile"]["size"] / (1024 * 1024), 2);
    $file_extension = pathinfo($file_name, PATHINFO_EXTENSION);
    $allowed_extension = array("xls", "xlsx", "csv");
    if (empty($_FILES['excelfile']['name'])) {
        header('location:index.php?message=Please select file');
    } else if (!in_array($file_extension, $allowed_extension)) {
        header('location:index.php?message=Please select xls, xlsx, csv file');
    } else if ($file_size >= 2) {
        header('location:index.php?message=Please select size less than 2 MB');
    }

    $excel_array = array();
    if ($file_extension == 'xls') {
        $render = new \PhpOffice\PhpSpreadsheet\Reader\Xls;
    } else if ($file_extension == 'xlsx') {
        $render = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx;
    } else {
        $render = new \PhpOffice\PhpSpreadsheet\Reader\Csv;
    }
    $spreadsheet = $render->load($file_tmpname);
    $data = $spreadsheet->getActiveSheet()->toArray();
    foreach ($data as $key => $row) {
        if ($key == 0) {
            continue;
        }
        $name = $row[0];
        $email = $row[1];
        $phone = $row[2];
        $password = $row[3];
        $dataImp = [
            'name' => $name,
            'email' => $email,
            'phone' => $phone,
            'password' => password_hash($password, PASSWORD_DEFAULT),
        ];
        array_push($excel_array, $dataImp);
    }

    echo "<pre>";
    print_r($excel_array);
    echo "</pre>";
}
if (isset($_GET['export_xl'])) {
    $sql = "SELECT * FROM `users_tbl`";
    $result = mysqli_query($connect, $sql);
    $data = mysqli_fetch_all($result, MYSQLI_ASSOC);

    $fileName = date("YmdHis") . "-" . rand(10, 100) . '.xlsx';
    $spreadsheet = new Spreadsheet();
    $sheet = $spreadsheet->getActiveSheet();
    $sheet->setCellValue('A1', 'Id');
    $sheet->setCellValue('B1', 'Name');
    $sheet->setCellValue('C1', 'Email');
    $sheet->setCellValue('D1', 'Phone');
    $sheet->setCellValue('E1', 'Picture');
    $sheet->setCellValue('F1', 'Created Date');
    $rows = 2;
    foreach ($data as $val) {
        $sheet->setCellValue('A' . $rows, $val['id']);
        $sheet->setCellValue('B' . $rows, $val['name']);
        $sheet->setCellValue('C' . $rows, $val['email']);
        $sheet->setCellValue('D' . $rows, $val['phone']);
        $sheet->setCellValue('E' . $rows, $val['picture']);
        $sheet->setCellValue('F' . $rows, $val['created_at']);
        $rows++;
    }
    $writer = new Xlsx($spreadsheet);
    $writer->save("xl-export/" . $fileName);
    header("Content-Type: application/vnd.ms-excel");
    header("location:xl-export/$fileName");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>

<body>


    <a href="<?= $fbloginbutton; ?>" class="btn btn-success btn-sm">Facebook Login</a><br><br>
    <a href="<?= $google_loginbutton; ?>" class="btn btn-danger btn-sm">Google Login</a><br><br>
    <a href="index.php?export_pdf=1" class="btn btn-info btn-sm">PDF Export</a><br><br>
    <a href="index.php?export_xl=1" class="btn btn-warning btn-sm">Excel Export</a><br><br>

    <form action="index.php" method="POST" enctype="multipart/form-data">
        <input type="file" name="excelfile" required>

        <input type="submit" name="submit" class="btn btn-primary btn-sm">
    </form>

</body>

</html>