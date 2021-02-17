require 'chilkat'
require 'net/ftp'
module Api 
    
class FtpController < ApplicationController

def connection
    ftp = Chilkat::CkFtp2.new()
    ftp.put_Hostname("165.227.193.19")
    ftp.put_Username("trevorsaudi")
    ftp.put_Password("skylark.2020")
    ftp.put_BandwidthThrottleUp(10000)
    ftp.Connect()
end

    def index 

        connection
      
        if (success == true)
            render json: {status: 'SUCCESS',message:'Connection successful'},status: :ok
        end
                
    end


    def create

        Net::FTP.open('165.227.193.19', 'trevorsaudi', 'skylark.2020') do |ftp|
            ftp.passive = true
            file = params[:file]
            ftp.putbinaryfile(file)
          end
        # ftp.ChangeRemoteDir("/home/trevorsaudi/ftp_backup")
        # if (success == true)
        #     render json: {status: 'SUCCESS',message:'Directory changed'},status: :ok
        # else
        #     render json: {status: 'ERROR',message:'Error changing directory'},status: :unprocessable_entity
        # end

        # filename = params[:upload]
        # file  = params[:file]
        # incoming_file = params[:upload][:binary]
        # uri = "#{Rails.root}/uploads/#{filename}"
        # FileUtils.cp_r incoming_file, uri


        # success = ftp.putbinaryfile(file , filename)
        if (success == true)
            render json: {status: 'SUCCESS',message:'File Uploaded'},status: :ok
        else
            render json: {status: 'ERROR',message:'Error Uploading'},status: :unprocessable_entity
        end

    
    
    end


end



end