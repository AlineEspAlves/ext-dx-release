create or replace TRIGGER CMDKLTD_AFTER_IN1
AFTER INSERT ON CMDKLTD_ACCESS_CTRL
FOR EACH ROW

BEGIN
    if (nvl(wheb_usuario_pck.get_ie_executar_trigger,'S') = 'S')  then
        
grava_log_tasy('-1337', 'Flow - context menu - addedd successfully.','CMDK_FLOW');

    end if;
END;
/