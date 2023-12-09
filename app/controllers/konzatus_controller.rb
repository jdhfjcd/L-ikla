class KonzatusController < ApplicationController
    
    def index
        @konzatus = Konzatu.all
    end

    def new
        @konzatu = Konzatu.new
        @gakusyoku = params[:gakusyoku]
        session[:previous_url] = request.referer
    end

    def create
        konzatu = Konzatu.new(konzatu_params)
        if konzatu.save
            redirect_to session[:previous_url]
        else
            redirect_back(fallback_location: root_path)
        end
    end

    def hitigayatudohi
        @konzatu = Konzatu.where(gakusyoku:"hitigayatudohi").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def hitigayaforest
        @konzatu = Konzatu.where(gakusyoku:"hitigayaforest").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def hitigayafujimi
        @konzatu = Konzatu.where(gakusyoku:"hitigayafujimi").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def hitigayastafu
        @konzatu = Konzatu.where(gakusyoku:"hitigayastafu").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def hitigayatamati
        @konzatu = Konzatu.where(gakusyoku:"hitigayatamati").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def htamasougou
        @konzatu = Konzatu.where(gakusyoku:"htamasougou").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def htamaegg
        @konzatu = Konzatu.where(gakusyoku:"htamaegg").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def htamasyagaku
        @konzatu = Konzatu.where(gakusyoku:"htamasyagaku").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def htamakeizai
        @konzatu = Konzatu.where(gakusyoku:"htamakeizai").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def htamagennfuku
        @konzatu = Konzatu.where(gakusyoku:"htamagennfuku").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def htamasupoken
        @konzatu = Konzatu.where(gakusyoku:"htamasupoken").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def wasedaookuma
        @konzatu = Konzatu.where(gakusyoku:"wasedaookuma").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def wasedagroundzaka
        @konzatu = Konzatu.where(gakusyoku:"wasedagroundzaka").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def msurugasky
        @konzatu = Konzatu.where(gakusyoku:"msurugasky").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def msurugacafe
        @konzatu = Konzatu.where(gakusyoku:"msurugacafe").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def msurugasan
        @konzatu = Konzatu.where(gakusyoku:"msurugasan").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def mizumimori1
        @konzatu = Konzatu.where(gakusyoku:"mizumimori1").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def mizumimori2
        @konzatu = Konzatu.where(gakusyoku:"mizumimori2").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def mizumimori3
        @konzatu = Konzatu.where(gakusyoku:"mizumimori3").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end
    
    def aoyama7
        @konzatu = Konzatu.where(gakusyoku:"aoyama7").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def aoyama17
        @konzatu = Konzatu.where(gakusyoku:"aoyama17").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def aoyamacafe
        @konzatu = Konzatu.where(gakusyoku:"aoyamacafe").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def rike1
        @konzatu = Konzatu.where(gakusyoku:"rike1").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def rikeaibi
        @konzatu = Konzatu.where(gakusyoku:"rikeaibi").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def riketullys
        @konzatu = Konzatu.where(gakusyoku:"riketullys").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def rikehararu
        @konzatu = Konzatu.where(gakusyoku:"rikehararu").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def rike9
        @konzatu = Konzatu.where(gakusyoku:"rike9").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def rikehibiya
        @konzatu = Konzatu.where(gakusyoku:"rikehibiya").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def rniizaforest
        @konzatu = Konzatu.where(gakusyoku:"rniizaforest").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def rniizakokage
        @konzatu = Konzatu.where(gakusyoku:"rniizakokage").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    def rniizahararu
        @konzatu = Konzatu.where(gakusyoku:"rniizahararu").where(:created_at => (Time.now - 3.minutes).. ).average(:komi)
    end

    private
    def konzatu_params
        params.require(:konzatu).permit(:gakusyoku,:komi) 
    end

end
