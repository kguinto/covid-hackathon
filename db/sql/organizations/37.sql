
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
      'Multnomah County Headquarters',
      '501 SE Hawthorne Blvd
Portland, OR 97214',
      'Portland',
      'OR',
      'Loading dock on 6th St.',
      'N/A',
      '45.5126598',
      '-122.6601822'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Multnomah County Headquarters'
        AND o.latitude = '45.5126598'
        AND o.longitude = '-122.6601822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Multnomah County Headquarters'
        AND o.latitude = '45.5126598'
        AND o.longitude = '-122.6601822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Multnomah County Headquarters'
        AND o.latitude = '45.5126598'
        AND o.longitude = '-122.6601822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Multnomah County Headquarters'
        AND o.latitude = '45.5126598'
        AND o.longitude = '-122.6601822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Multnomah County Headquarters'
        AND o.latitude = '45.5126598'
        AND o.longitude = '-122.6601822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Multnomah County Headquarters'
        AND o.latitude = '45.5126598'
        AND o.longitude = '-122.6601822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Other respirators (P100''s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Multnomah County Headquarters'
        AND o.latitude = '45.5126598'
        AND o.longitude = '-122.6601822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPR''s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Multnomah County Headquarters'
        AND o.latitude = '45.5126598'
        AND o.longitude = '-122.6601822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('and PAPR supplies / parts)',
    (SELECT id FROM organizations o
      WHERE o.name = 'Multnomah County Headquarters'
        AND o.latitude = '45.5126598'
        AND o.longitude = '-122.6601822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Multnomah County Headquarters'
        AND o.latitude = '45.5126598'
        AND o.longitude = '-122.6601822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Multnomah County Headquarters'
        AND o.latitude = '45.5126598'
        AND o.longitude = '-122.6601822'));

COMMIT;
