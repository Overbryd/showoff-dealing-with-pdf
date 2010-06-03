!SLIDE bullets incremental

## Generating PDFs

* sandal's Prawn
* bruce's rtex
* Flying Saucer Project
* mbleigh's princely
* PDFlib.com

!SLIDE

### Prawn – [http://github.com/sandal/prawn/](http://github.com/sandal/prawn/)

Successor of PDF::Writer

!SLIDE
    
    @@@ Ruby
    require 'rubygems'
    require 'prawn'
    
    Prawn::Document::generate(
      'hello.pdf'
    ) do |pdf|
      pdf.text 'Hello World'
    end

!SLIDE

### More usage examples
### [http://github.com/sandal/prawn/tree/stable/examples](http://github.com/sandal/prawn/tree/stable/examples)

!SLIDE

### prawnto - [http://github.com/thorny-sun/prawnto](http://github.com/thorny-sun/prawnto)

### Rails plugin to create prawn views

!SLIDE

    @@@ Ruby
    # app/controllers/invoices_controller.rb
    def show
      @invoice = Invoice.find(params[:id])
      prawnto :inline => false,
        :filename => "Invoice #{@invoice.number}"
    end
    
    # app/views/invoices/show.pdf.prawn
    
    total = number_to_currency(@invoice.total)
    pdf.text "We charged you: #{total}"
    
!SLIDE

### [prawnto demo application](http://github.com/warrenli/prawnto-demo)

!SLIDE


### XeTeX (XeLaTeX) - OpenType

http://github.com/threedaymonk/html2tex


!SLIDE

## Generating PDFs

### acts_as_flying_saucer