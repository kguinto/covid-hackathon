
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
      'Orwell Fire Dept. / Orwell Rescue Squad',
      '400 Main Street
Orwell, VT 05760',
      'Orwell',
      'VT',
      '400 Main Street',
      'Yes',
      '43.8036622',
      '-73.302705'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orwell Fire Dept. / Orwell Rescue Squad'
        AND o.latitude = '43.8036622'
        AND o.longitude = '-73.302705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orwell Fire Dept. / Orwell Rescue Squad'
        AND o.latitude = '43.8036622'
        AND o.longitude = '-73.302705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orwell Fire Dept. / Orwell Rescue Squad'
        AND o.latitude = '43.8036622'
        AND o.longitude = '-73.302705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orwell Fire Dept. / Orwell Rescue Squad'
        AND o.latitude = '43.8036622'
        AND o.longitude = '-73.302705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orwell Fire Dept. / Orwell Rescue Squad'
        AND o.latitude = '43.8036622'
        AND o.longitude = '-73.302705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orwell Fire Dept. / Orwell Rescue Squad'
        AND o.latitude = '43.8036622'
        AND o.longitude = '-73.302705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orwell Fire Dept. / Orwell Rescue Squad'
        AND o.latitude = '43.8036622'
        AND o.longitude = '-73.302705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orwell Fire Dept. / Orwell Rescue Squad'
        AND o.latitude = '43.8036622'
        AND o.longitude = '-73.302705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orwell Fire Dept. / Orwell Rescue Squad'
        AND o.latitude = '43.8036622'
        AND o.longitude = '-73.302705'));

COMMIT;
