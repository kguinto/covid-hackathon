
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
      'Boston Mountain Rural Health Center Inc.',
      '322 Dogwood Hollow Rd
Mountain View, AR 72560',
      'Mountain View ',
      'AR',
      '',
      'No',
      '35.8901411',
      '-92.1045475'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '35.8901411'
        AND o.longitude = '-92.1045475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '35.8901411'
        AND o.longitude = '-92.1045475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '35.8901411'
        AND o.longitude = '-92.1045475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '35.8901411'
        AND o.longitude = '-92.1045475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '35.8901411'
        AND o.longitude = '-92.1045475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '35.8901411'
        AND o.longitude = '-92.1045475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '35.8901411'
        AND o.longitude = '-92.1045475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '35.8901411'
        AND o.longitude = '-92.1045475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '35.8901411'
        AND o.longitude = '-92.1045475'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '35.8901411'
        AND o.longitude = '-92.1045475'));

COMMIT;
