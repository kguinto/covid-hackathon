
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
      'Doctoroo',
      '1181 Grier Dr Suite C
Las Vegas, NV 89119',
      'Las Vegas',
      'NV',
      'Attn: Josh Mayo
Mark them as PPEs at the door, or go inside to drop them off in person ',
      'Yes',
      '36.0678345',
      '-115.1376854'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doctoroo'
        AND o.latitude = '36.0678345'
        AND o.longitude = '-115.1376854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doctoroo'
        AND o.latitude = '36.0678345'
        AND o.longitude = '-115.1376854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doctoroo'
        AND o.latitude = '36.0678345'
        AND o.longitude = '-115.1376854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doctoroo'
        AND o.latitude = '36.0678345'
        AND o.longitude = '-115.1376854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doctoroo'
        AND o.latitude = '36.0678345'
        AND o.longitude = '-115.1376854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doctoroo'
        AND o.latitude = '36.0678345'
        AND o.longitude = '-115.1376854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doctoroo'
        AND o.latitude = '36.0678345'
        AND o.longitude = '-115.1376854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doctoroo'
        AND o.latitude = '36.0678345'
        AND o.longitude = '-115.1376854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doctoroo'
        AND o.latitude = '36.0678345'
        AND o.longitude = '-115.1376854'));

COMMIT;
