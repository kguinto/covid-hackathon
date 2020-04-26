
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
      'Inova Alexandria Hospital Labor and Delivery ',
      '4320 Seminary Rd
Alexandria, VA 22304',
      'Alexandria ',
      'VA',
      'Please directly mail to the labor and delivery department ',
      'Yes',
      '38.82245',
      '-77.1049983'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Alexandria Hospital Labor and Delivery '
        AND o.latitude = '38.82245'
        AND o.longitude = '-77.1049983'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Alexandria Hospital Labor and Delivery '
        AND o.latitude = '38.82245'
        AND o.longitude = '-77.1049983'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Alexandria Hospital Labor and Delivery '
        AND o.latitude = '38.82245'
        AND o.longitude = '-77.1049983'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Alexandria Hospital Labor and Delivery '
        AND o.latitude = '38.82245'
        AND o.longitude = '-77.1049983'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Alexandria Hospital Labor and Delivery '
        AND o.latitude = '38.82245'
        AND o.longitude = '-77.1049983'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Alexandria Hospital Labor and Delivery '
        AND o.latitude = '38.82245'
        AND o.longitude = '-77.1049983'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Alexandria Hospital Labor and Delivery '
        AND o.latitude = '38.82245'
        AND o.longitude = '-77.1049983'));

COMMIT;
