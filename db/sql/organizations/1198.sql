
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
      'Hospice of Missoula',
      '1900 S Reserve St
Missoula, MT 59801',
      'Missoula',
      'MT',
      'Contact hospice staff or leave at front door',
      'Yes',
      '46.8531579',
      '-114.0391094'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of Missoula'
        AND o.latitude = '46.8531579'
        AND o.longitude = '-114.0391094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of Missoula'
        AND o.latitude = '46.8531579'
        AND o.longitude = '-114.0391094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of Missoula'
        AND o.latitude = '46.8531579'
        AND o.longitude = '-114.0391094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of Missoula'
        AND o.latitude = '46.8531579'
        AND o.longitude = '-114.0391094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of Missoula'
        AND o.latitude = '46.8531579'
        AND o.longitude = '-114.0391094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of Missoula'
        AND o.latitude = '46.8531579'
        AND o.longitude = '-114.0391094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of Missoula'
        AND o.latitude = '46.8531579'
        AND o.longitude = '-114.0391094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of Missoula'
        AND o.latitude = '46.8531579'
        AND o.longitude = '-114.0391094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of Missoula'
        AND o.latitude = '46.8531579'
        AND o.longitude = '-114.0391094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of Missoula'
        AND o.latitude = '46.8531579'
        AND o.longitude = '-114.0391094'));

COMMIT;
