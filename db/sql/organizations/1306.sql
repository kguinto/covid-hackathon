
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
      'Montefiore New Rochelle Hospital',
      '16 Guion Pl
New Rochelle, NY 10801',
      'New Rochelle',
      'NY',
      '',
      'we will accept an open box but contained items must be wrapped/sealed tight.',
      '40.9128806',
      '-73.7873586'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore New Rochelle Hospital'
        AND o.latitude = '40.9128806'
        AND o.longitude = '-73.7873586'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore New Rochelle Hospital'
        AND o.latitude = '40.9128806'
        AND o.longitude = '-73.7873586'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore New Rochelle Hospital'
        AND o.latitude = '40.9128806'
        AND o.longitude = '-73.7873586'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore New Rochelle Hospital'
        AND o.latitude = '40.9128806'
        AND o.longitude = '-73.7873586'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore New Rochelle Hospital'
        AND o.latitude = '40.9128806'
        AND o.longitude = '-73.7873586'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore New Rochelle Hospital'
        AND o.latitude = '40.9128806'
        AND o.longitude = '-73.7873586'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore New Rochelle Hospital'
        AND o.latitude = '40.9128806'
        AND o.longitude = '-73.7873586'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore New Rochelle Hospital'
        AND o.latitude = '40.9128806'
        AND o.longitude = '-73.7873586'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore New Rochelle Hospital'
        AND o.latitude = '40.9128806'
        AND o.longitude = '-73.7873586'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore New Rochelle Hospital'
        AND o.latitude = '40.9128806'
        AND o.longitude = '-73.7873586'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('3M N95 masks; BIPAP & CPAP masks; disposable stethescopes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore New Rochelle Hospital'
        AND o.latitude = '40.9128806'
        AND o.longitude = '-73.7873586'));

COMMIT;
