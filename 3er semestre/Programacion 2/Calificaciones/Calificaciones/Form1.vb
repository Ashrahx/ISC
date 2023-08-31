Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim cali1 As Integer
        Dim cali2 As Integer
        Dim cali3 As Integer
        Dim prom As Integer

        cali1 = txtCali1.Text
        cali2 = txtCali2.Text
        cali3 = txtCali3.Text

        prom = (cali1 + cali2 + cali3) / 3

        txtProm.Text = prom

        If prom >= 70 Then
            txtStatus.Text = "Aprobado"
        Else
            txtStatus.Text = "Reprobado"
        End If

    End Sub
End Class
