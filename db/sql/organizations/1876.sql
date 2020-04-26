
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
      'Montefiore Medical Center',
      '111 E 210th St
The Bronx, NY 10467',
      'New York - Bronx',
      'NY',
      '',
      'Yes',
      '40.8807854',
      '-73.8794877'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center'
        AND o.latitude = '40.8807854'
        AND o.longitude = '-73.8794877'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center'
        AND o.latitude = '40.8807854'
        AND o.longitude = '-73.8794877'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center'
        AND o.latitude = '40.8807854'
        AND o.longitude = '-73.8794877'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center'
        AND o.latitude = '40.8807854'
        AND o.longitude = '-73.8794877'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center'
        AND o.latitude = '40.8807854'
        AND o.longitude = '-73.8794877'));

COMMIT;
