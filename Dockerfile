ARG BASE_IMAGE="bileyg/packhaus"
ARG TAG="latest"
FROM ${BASE_IMAGE}:${TAG}
RUN ["mkdir","-p","/root/.wine/drive_c/ProgramData/ASCON/Pilot_Print"]
COPY ["build","/root/.wine/drive_c/Program Files/ASCON/PilotSpecial"]
CMD ["/bin/sh"]
#ENTRYPOINT ["wine","/root/.wine/drive_c/'Program Files'/ASCON/PilotSpecial/Ascon.Pilot.PilotEnterprise.exe"]
