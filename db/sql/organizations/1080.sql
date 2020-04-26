
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
      'San Angelo Community Medical Center ',
      '3901 Knickerbocker Rd
San Angelo, TX 76904',
      'San Angelo ',
      'TX',
      'Courtney Dean',
      'Yes',
      '31.4194045',
      '-100.4710499'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Angelo Community Medical Center '
        AND o.latitude = '31.4194045'
        AND o.longitude = '-100.4710499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Angelo Community Medical Center '
        AND o.latitude = '31.4194045'
        AND o.longitude = '-100.4710499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Angelo Community Medical Center '
        AND o.latitude = '31.4194045'
        AND o.longitude = '-100.4710499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Angelo Community Medical Center '
        AND o.latitude = '31.4194045'
        AND o.longitude = '-100.4710499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Angelo Community Medical Center '
        AND o.latitude = '31.4194045'
        AND o.longitude = '-100.4710499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Angelo Community Medical Center '
        AND o.latitude = '31.4194045'
        AND o.longitude = '-100.4710499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Angelo Community Medical Center '
        AND o.latitude = '31.4194045'
        AND o.longitude = '-100.4710499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Angelo Community Medical Center '
        AND o.latitude = '31.4194045'
        AND o.longitude = '-100.4710499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Angelo Community Medical Center '
        AND o.latitude = '31.4194045'
        AND o.longitude = '-100.4710499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Angelo Community Medical Center '
        AND o.latitude = '31.4194045'
        AND o.longitude = '-100.4710499'));

COMMIT;
