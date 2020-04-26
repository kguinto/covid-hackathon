
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
      'Regency Manor Healthcare Center',
      '3011 W Adams Ave
Temple, TX 76504',
      'Temple',
      'TX',
      'Front door. Call when dropping off 254-773-1626',
      'No',
      '31.1058854',
      '-97.3738987'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regency Manor Healthcare Center'
        AND o.latitude = '31.1058854'
        AND o.longitude = '-97.3738987'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regency Manor Healthcare Center'
        AND o.latitude = '31.1058854'
        AND o.longitude = '-97.3738987'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regency Manor Healthcare Center'
        AND o.latitude = '31.1058854'
        AND o.longitude = '-97.3738987'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regency Manor Healthcare Center'
        AND o.latitude = '31.1058854'
        AND o.longitude = '-97.3738987'));

COMMIT;
