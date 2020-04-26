
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
      'St. Joseph Mercy Oakland ',
      '44405 Woodward Ave
Pontiac, MI 48341',
      'Pontiac ',
      'MI',
      '',
      'Yes',
      '42.6141856',
      '-83.276215'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Oakland '
        AND o.latitude = '42.6141856'
        AND o.longitude = '-83.276215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Oakland '
        AND o.latitude = '42.6141856'
        AND o.longitude = '-83.276215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Oakland '
        AND o.latitude = '42.6141856'
        AND o.longitude = '-83.276215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Oakland '
        AND o.latitude = '42.6141856'
        AND o.longitude = '-83.276215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Oakland '
        AND o.latitude = '42.6141856'
        AND o.longitude = '-83.276215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Oakland '
        AND o.latitude = '42.6141856'
        AND o.longitude = '-83.276215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Oakland '
        AND o.latitude = '42.6141856'
        AND o.longitude = '-83.276215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Oakland '
        AND o.latitude = '42.6141856'
        AND o.longitude = '-83.276215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Mercy Oakland '
        AND o.latitude = '42.6141856'
        AND o.longitude = '-83.276215'));

COMMIT;
