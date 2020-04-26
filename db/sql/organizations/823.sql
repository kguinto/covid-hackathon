
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
      'CarePoint Health - Christ Hospital',
      '176 Palisade Ave
Jersey City, NJ 07306',
      'Jersey City',
      'NJ',
      'Bring to lobby and ask receptionist to call Marie Duffy or Dr. Woods ',
      'No',
      '40.7342585',
      '-74.0498006'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'CarePoint Health - Christ Hospital'
        AND o.latitude = '40.7342585'
        AND o.longitude = '-74.0498006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'CarePoint Health - Christ Hospital'
        AND o.latitude = '40.7342585'
        AND o.longitude = '-74.0498006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'CarePoint Health - Christ Hospital'
        AND o.latitude = '40.7342585'
        AND o.longitude = '-74.0498006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'CarePoint Health - Christ Hospital'
        AND o.latitude = '40.7342585'
        AND o.longitude = '-74.0498006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'CarePoint Health - Christ Hospital'
        AND o.latitude = '40.7342585'
        AND o.longitude = '-74.0498006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'CarePoint Health - Christ Hospital'
        AND o.latitude = '40.7342585'
        AND o.longitude = '-74.0498006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'CarePoint Health - Christ Hospital'
        AND o.latitude = '40.7342585'
        AND o.longitude = '-74.0498006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'CarePoint Health - Christ Hospital'
        AND o.latitude = '40.7342585'
        AND o.longitude = '-74.0498006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'CarePoint Health - Christ Hospital'
        AND o.latitude = '40.7342585'
        AND o.longitude = '-74.0498006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'CarePoint Health - Christ Hospital'
        AND o.latitude = '40.7342585'
        AND o.longitude = '-74.0498006'));

COMMIT;
