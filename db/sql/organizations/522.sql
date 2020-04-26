
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
      'URGIMED Urgent Care',
      '400 Route 10 West
Randolph, New Jersey 07869',
      'Randolph',
      'NJ',
      'UPS/FedEx /Postal delivery ',
      'Unsure',
      '40.8642941',
      '-74.5604711'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'URGIMED Urgent Care'
        AND o.latitude = '40.8642941'
        AND o.longitude = '-74.5604711'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'URGIMED Urgent Care'
        AND o.latitude = '40.8642941'
        AND o.longitude = '-74.5604711'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'URGIMED Urgent Care'
        AND o.latitude = '40.8642941'
        AND o.longitude = '-74.5604711'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'URGIMED Urgent Care'
        AND o.latitude = '40.8642941'
        AND o.longitude = '-74.5604711'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'URGIMED Urgent Care'
        AND o.latitude = '40.8642941'
        AND o.longitude = '-74.5604711'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'URGIMED Urgent Care'
        AND o.latitude = '40.8642941'
        AND o.longitude = '-74.5604711'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'URGIMED Urgent Care'
        AND o.latitude = '40.8642941'
        AND o.longitude = '-74.5604711'));

COMMIT;
