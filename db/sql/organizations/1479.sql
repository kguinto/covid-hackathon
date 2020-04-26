
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
      'Virginia Hospital Center',
      '1701 N George Mason Dr
Arlington, VA 22205',
      'Arlington ',
      'VA',
      'Loading dock ',
      'Not sure. Can ask',
      '38.8890755',
      '-77.1274832'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Hospital Center'
        AND o.latitude = '38.8890755'
        AND o.longitude = '-77.1274832'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Hospital Center'
        AND o.latitude = '38.8890755'
        AND o.longitude = '-77.1274832'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Hospital Center'
        AND o.latitude = '38.8890755'
        AND o.longitude = '-77.1274832'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Hospital Center'
        AND o.latitude = '38.8890755'
        AND o.longitude = '-77.1274832'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Hospital Center'
        AND o.latitude = '38.8890755'
        AND o.longitude = '-77.1274832'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Hospital Center'
        AND o.latitude = '38.8890755'
        AND o.longitude = '-77.1274832'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Hospital Center'
        AND o.latitude = '38.8890755'
        AND o.longitude = '-77.1274832'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Hospital Center'
        AND o.latitude = '38.8890755'
        AND o.longitude = '-77.1274832'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Hospital Center'
        AND o.latitude = '38.8890755'
        AND o.longitude = '-77.1274832'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Hospital Center'
        AND o.latitude = '38.8890755'
        AND o.longitude = '-77.1274832'));

COMMIT;
