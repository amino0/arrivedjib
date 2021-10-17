<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Liste</title>
    <style>
        .styled-table {
            border-collapse: collapse;
            margin: 25px 0;
            font-size: 0.9em;
            font-family: sans-serif;
            min-width: 400px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
            margin-left: auto;
            margin-right: auto;
        }
        .styled-table thead tr {
            background-color: #001f3f;
            color: #ffffff;
            text-align: left;
        }
        .styled-table th,
        .styled-table td {
            padding: 12px 15px;
        }
        .styled-table tbody tr {
            border-bottom: 1px solid #dddddd;
        }

        .styled-table tbody tr:nth-of-type(even) {
            background-color: #f3f3f3;
        }

        .styled-table tbody tr:last-of-type {
            border-bottom: 2px solid #009879;
        }
        .time{
            position: absolute;
            right: 0px;
            top: 0px;
            font-style: italic;
        }
        .badge{
            display:inline-block;
            padding:.35em .65em;
            font-size:.75em;
            font-weight:700;
            line-height:1;
            color:#fff;
            text-align:center;
            white-space:nowrap;
            vertical-align:baseline;
            border-radius:.25rem;
        }
        .bg-success{
            background-color:#198754 !important;
        }
        .bg-warning{
            background-color:#ffc107 !important;
        }
        .bg-danger{
            background-color:#dc3545 !important;
        }
    </style>
</head>
<body>
    <span style="font-style: italic;">Edité par : {{ Auth::user()->name }}</span>
    <span class="time">Le {{ $mytime }}</span>
    <h1 style="text-align: center;">Liste</h1>
    <table class="styled-table">
        <thead>
            <tr>
                <th>Nom Complet</th>
                <th>N° de passeport</th>
                <th>Age</th>
                <th>Vol</th>
                <th>Nationalité</th>
                <th>Venant</th>
                <th>Allant</th>
                <th>PCR</th>
                <th>Vaccin</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($lists as $list)
                <tr>
                    <td>{{ $list->nomcomplet }}</td>
                    <td>{{ $list->numero_passeport }}</td>
                    <td>{{ $list->age }}</td>
                    <td>{{ $list->vol }}</td>
                    <td>{{ $list->nationalite }}</td>
                    <td>{{ $list->venant }}</td>
                    <td>{{ $list->allant }}</td>
                    <td>
                        @if ($list->pcr == 'oui')
                            <span class="badge bg-danger">Positif</span>
                        @else
                            <span class="badge bg-success text-dark">Négatif</span>
                        @endif
                    </td>
                    <td>
                        @if ($list->vaccin == 'oui')
                            <span class="badge bg-success text-dark">Vacciné</span>
                        @else
                            <span class="badge bg-warning text-dark">Non Vacciné</span>
                        @endif
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>