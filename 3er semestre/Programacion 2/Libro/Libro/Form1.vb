Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim precioDolares As Double
        Dim tipoCambio As Double = 17
        Dim precioPesos As Double


        If Double.TryParse(txtPrecioDolares.Text, precioDolares) Then
            precioPesos = precioDolares * tipoCambio
            lblPrecioPesos.Text = "Precio en pesos mexicanos: " & precioPesos.ToString("N2") & " MXN"

            If precioPesos > 300 Then
                lblEvaluacion.Text = "El libro es costoso"
            Else
                lblEvaluacion.Text = "El libro es accesible"
            End If
        Else
            MessageBox.Show("Ingrese un valor válido para el precio en dólares.")
        End If
    End Sub
End Class
