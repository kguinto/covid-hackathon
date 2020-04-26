
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
      'Cass Regional Medical Center',
      '2800 E. Rock Haven Road
Harrisonville, MO 64701',
      'Harrisonville',
      'MO',
      'Dock in back of hospital by large Air Gas Tank.  Ring bell',
      'Preferred sealed for safety purposes',
      '38.6650857',
      '-94.3774077'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cass Regional Medical Center'
        AND o.latitude = '38.6650857'
        AND o.longitude = '-94.3774077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cass Regional Medical Center'
        AND o.latitude = '38.6650857'
        AND o.longitude = '-94.3774077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cass Regional Medical Center'
        AND o.latitude = '38.6650857'
        AND o.longitude = '-94.3774077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cass Regional Medical Center'
        AND o.latitude = '38.6650857'
        AND o.longitude = '-94.3774077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cass Regional Medical Center'
        AND o.latitude = '38.6650857'
        AND o.longitude = '-94.3774077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cass Regional Medical Center'
        AND o.latitude = '38.6650857'
        AND o.longitude = '-94.3774077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cass Regional Medical Center'
        AND o.latitude = '38.6650857'
        AND o.longitude = '-94.3774077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cass Regional Medical Center'
        AND o.latitude = '38.6650857'
        AND o.longitude = '-94.3774077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cass Regional Medical Center'
        AND o.latitude = '38.6650857'
        AND o.longitude = '-94.3774077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cass Regional Medical Center'
        AND o.latitude = '38.6650857'
        AND o.longitude = '-94.3774077'));

COMMIT;
