
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
      'Legacy Health',
      '501 N. Graham Street
Portland, OR 97227',
      'Portland',
      'OR',
      'Main office building by valet parking - or email giving@lhs.org',
      'Yes',
      '45.543319',
      '-122.670705'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health'
        AND o.latitude = '45.543319'
        AND o.longitude = '-122.670705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health'
        AND o.latitude = '45.543319'
        AND o.longitude = '-122.670705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health'
        AND o.latitude = '45.543319'
        AND o.longitude = '-122.670705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health'
        AND o.latitude = '45.543319'
        AND o.longitude = '-122.670705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health'
        AND o.latitude = '45.543319'
        AND o.longitude = '-122.670705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health'
        AND o.latitude = '45.543319'
        AND o.longitude = '-122.670705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health'
        AND o.latitude = '45.543319'
        AND o.longitude = '-122.670705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health'
        AND o.latitude = '45.543319'
        AND o.longitude = '-122.670705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health'
        AND o.latitude = '45.543319'
        AND o.longitude = '-122.670705'));

COMMIT;
