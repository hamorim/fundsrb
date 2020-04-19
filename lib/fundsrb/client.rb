module Fundsrb
  class Client
    API_ENDPOINT = "https://www.fundsexplorer.com.br/funds".freeze

    def query(ticket)
      parser(Nokogiri::HTML(open("#{API_ENDPOINT}/#{ticket}"), nil, Encoding::UTF_8.to_s))
    end

    private

    def parser(data)
      {
        liquidity: data.xpath('//*[@id="main-indicators-carousel"]/div[1]/span[2]').text.strip,
        dividend: data.xpath('//*[@id="main-indicators-carousel"]/div[2]/span[2]').text.strip,
        yield: data.xpath('//*[@id="main-indicators-carousel"]/div[3]/span[2]').text.strip,
        patrimony: data.xpath('//*[@id="main-indicators-carousel"]/div[5]/span[2]').text.strip,
        pvp: data.xpath('//*[@id="main-indicators-carousel"]/div[7]/span[2]').text.strip,
        name: data.xpath('//*[@id="basic-infos"]/div/div/div[2]/div/div[1]/ul/li[1]/div[2]/span[2]').text.strip,
        cnpj: data.xpath('//*[@id="basic-infos"]/div/div/div[2]/div/div[2]/ul/li[1]/div[2]/span[2]').text.strip,
        segment: data.xpath('//*[@id="basic-infos"]/div/div/div[2]/div/div[2]/ul/li[4]/div[2]/span[2]').text.strip,
      }
    end
  end
end
