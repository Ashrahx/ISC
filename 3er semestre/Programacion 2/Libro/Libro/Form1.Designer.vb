<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Label1 = New Label()
        txtPrecioDolares = New TextBox()
        Label2 = New Label()
        lblPrecioPesos = New Label()
        lblEvaluacion = New Label()
        Button1 = New Button()
        SuspendLayout()
        ' 
        ' Label1
        ' 
        Label1.AutoSize = True
        Label1.Font = New Font("Segoe UI", 19.8000011F, FontStyle.Bold, GraphicsUnit.Point)
        Label1.Location = New Point(224, 56)
        Label1.Name = "Label1"
        Label1.Size = New Size(320, 46)
        Label1.TabIndex = 0
        Label1.Text = "Cotización de libro"
        ' 
        ' txtPrecioDolares
        ' 
        txtPrecioDolares.Location = New Point(224, 141)
        txtPrecioDolares.Name = "txtPrecioDolares"
        txtPrecioDolares.Size = New Size(125, 27)
        txtPrecioDolares.TabIndex = 1
        ' 
        ' Label2
        ' 
        Label2.AutoSize = True
        Label2.Location = New Point(224, 118)
        Label2.Name = "Label2"
        Label2.Size = New Size(173, 20)
        Label2.TabIndex = 2
        Label2.Text = "Ingresa el costo del libro"
        ' 
        ' lblPrecioPesos
        ' 
        lblPrecioPesos.AutoSize = True
        lblPrecioPesos.Location = New Point(224, 191)
        lblPrecioPesos.Name = "lblPrecioPesos"
        lblPrecioPesos.Size = New Size(0, 20)
        lblPrecioPesos.TabIndex = 3
        ' 
        ' lblEvaluacion
        ' 
        lblEvaluacion.AutoSize = True
        lblEvaluacion.Location = New Point(224, 231)
        lblEvaluacion.Name = "lblEvaluacion"
        lblEvaluacion.Size = New Size(0, 20)
        lblEvaluacion.TabIndex = 5
        ' 
        ' Button1
        ' 
        Button1.Location = New Point(450, 141)
        Button1.Name = "Button1"
        Button1.Size = New Size(94, 29)
        Button1.TabIndex = 6
        Button1.Text = "Convertir"
        Button1.UseVisualStyleBackColor = True
        ' 
        ' Form1
        ' 
        AutoScaleDimensions = New SizeF(8F, 20F)
        AutoScaleMode = AutoScaleMode.Font
        ClientSize = New Size(800, 450)
        Controls.Add(Button1)
        Controls.Add(lblEvaluacion)
        Controls.Add(lblPrecioPesos)
        Controls.Add(Label2)
        Controls.Add(txtPrecioDolares)
        Controls.Add(Label1)
        Name = "Form1"
        Text = "Form1"
        ResumeLayout(False)
        PerformLayout()
    End Sub

    Friend WithEvents Label1 As Label
    Friend WithEvents txtPrecioDolares As TextBox
    Friend WithEvents Label2 As Label
    Friend WithEvents lblPrecioPesos As Label
    Friend WithEvents lblEvaluacion As Label
    Friend WithEvents Button1 As Button
End Class
