
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
      'Teton Valley Hospital',
      '120 E Howard Ave
Driggs, ID 83422',
      'Driggs',
      'ID',
      'Drop off at ER entrance or mail to:
Teton Valley Hospital 
Attn: Materials
120 E Howard st
Driggs Idaho 83422',
      'Yes',
      '43.726374',
      '-111.1081462'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Teton Valley Hospital'
        AND o.latitude = '43.726374'
        AND o.longitude = '-111.1081462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Teton Valley Hospital'
        AND o.latitude = '43.726374'
        AND o.longitude = '-111.1081462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Teton Valley Hospital'
        AND o.latitude = '43.726374'
        AND o.longitude = '-111.1081462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Teton Valley Hospital'
        AND o.latitude = '43.726374'
        AND o.longitude = '-111.1081462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Teton Valley Hospital'
        AND o.latitude = '43.726374'
        AND o.longitude = '-111.1081462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Teton Valley Hospital'
        AND o.latitude = '43.726374'
        AND o.longitude = '-111.1081462'));

COMMIT;
