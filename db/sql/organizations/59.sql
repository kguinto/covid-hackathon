
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
      'NewYork-Presbyterian Queens',
      '56-45 Main St
Flushing, NY 11355',
      'New York - Queens',
      'NY',
      'TBD',
      'Yes',
      '40.7471198',
      '-73.8253655'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Queens'
        AND o.latitude = '40.7471198'
        AND o.longitude = '-73.8253655'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Queens'
        AND o.latitude = '40.7471198'
        AND o.longitude = '-73.8253655'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Queens'
        AND o.latitude = '40.7471198'
        AND o.longitude = '-73.8253655'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Queens'
        AND o.latitude = '40.7471198'
        AND o.longitude = '-73.8253655'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Queens'
        AND o.latitude = '40.7471198'
        AND o.longitude = '-73.8253655'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Queens'
        AND o.latitude = '40.7471198'
        AND o.longitude = '-73.8253655'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gown',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Queens'
        AND o.latitude = '40.7471198'
        AND o.longitude = '-73.8253655'));

COMMIT;
