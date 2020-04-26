
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
      'Imaging Center for Women',
      '1300 Hospital Dr #100
Fredericksburg, VA 22401',
      'Fredericksburg',
      'VA',
      'attn: Dr. Talukdar ',
      'Yes',
      '38.3076804',
      '-77.4872184'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Imaging Center for Women'
        AND o.latitude = '38.3076804'
        AND o.longitude = '-77.4872184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Imaging Center for Women'
        AND o.latitude = '38.3076804'
        AND o.longitude = '-77.4872184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Imaging Center for Women'
        AND o.latitude = '38.3076804'
        AND o.longitude = '-77.4872184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Imaging Center for Women'
        AND o.latitude = '38.3076804'
        AND o.longitude = '-77.4872184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Imaging Center for Women'
        AND o.latitude = '38.3076804'
        AND o.longitude = '-77.4872184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Imaging Center for Women'
        AND o.latitude = '38.3076804'
        AND o.longitude = '-77.4872184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Imaging Center for Women'
        AND o.latitude = '38.3076804'
        AND o.longitude = '-77.4872184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Imaging Center for Women'
        AND o.latitude = '38.3076804'
        AND o.longitude = '-77.4872184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Imaging Center for Women'
        AND o.latitude = '38.3076804'
        AND o.longitude = '-77.4872184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Imaging Center for Women'
        AND o.latitude = '38.3076804'
        AND o.longitude = '-77.4872184'));

COMMIT;
