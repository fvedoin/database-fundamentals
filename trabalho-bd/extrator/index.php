<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>Trabalho final Banco de Dados</h2>
                    <form action="functions.php" method="post" name="upload_excel" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="control-label" for="filebutton">Selecione um arquivo</label>
                            <input type="file" name="file" id="file" class="form-control">
                        </div>
                        <div class="form-group">
                            <button type="submit" id="submit" name="Import" class="btn btn-primary button-loading" data-loading-text="Carregando...">Importar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>