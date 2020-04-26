
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Christus St PATRICK Hospital',
      '524 Dr Michael Debakey Dr
Lake Charles, LA 70601',
      'Lake Charles ',
      'LA',
      'For curbside instructions for delivery  contact Nick Stewart @ (337) 476-6450 or Jamie Service @ 3375409587.  Mailing Instructions- Attn: Central Supply/ Material Managememt - Nick Stewart ',
      'Yes',
      '30.216108',
      '-93.227808'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus St PATRICK Hospital'
        AND o.latitude = '30.216108'
        AND o.longitude = '-93.227808'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus St PATRICK Hospital'
        AND o.latitude = '30.216108'
        AND o.longitude = '-93.227808'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus St PATRICK Hospital'
        AND o.latitude = '30.216108'
        AND o.longitude = '-93.227808'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus St PATRICK Hospital'
        AND o.latitude = '30.216108'
        AND o.longitude = '-93.227808'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus St PATRICK Hospital'
        AND o.latitude = '30.216108'
        AND o.longitude = '-93.227808'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus St PATRICK Hospital'
        AND o.latitude = '30.216108'
        AND o.longitude = '-93.227808'));

COMMIT;
