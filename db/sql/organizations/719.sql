
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
      'Montefiore medical center',
      '111 E 210th St
The Bronx, NY 10467',
      'New York - Bronx',
      'NY',
      'Call 718-920-5731',
      'Unsure ',
      '40.8807854',
      '-73.8794877'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore medical center'
        AND o.latitude = '40.8807854'
        AND o.longitude = '-73.8794877'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore medical center'
        AND o.latitude = '40.8807854'
        AND o.longitude = '-73.8794877'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore medical center'
        AND o.latitude = '40.8807854'
        AND o.longitude = '-73.8794877'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore medical center'
        AND o.latitude = '40.8807854'
        AND o.longitude = '-73.8794877'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore medical center'
        AND o.latitude = '40.8807854'
        AND o.longitude = '-73.8794877'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore medical center'
        AND o.latitude = '40.8807854'
        AND o.longitude = '-73.8794877'));

COMMIT;
