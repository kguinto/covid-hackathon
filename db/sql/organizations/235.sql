
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
      'Gottlieb Memorial Hospital',
      '701 W North Ave
Melrose Park, IL 60160',
      'Melrose Park',
      'IL',
      'ED main entrance',
      'Yes',
      '41.910205',
      '-87.8418095'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gottlieb Memorial Hospital'
        AND o.latitude = '41.910205'
        AND o.longitude = '-87.8418095'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gottlieb Memorial Hospital'
        AND o.latitude = '41.910205'
        AND o.longitude = '-87.8418095'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gottlieb Memorial Hospital'
        AND o.latitude = '41.910205'
        AND o.longitude = '-87.8418095'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gottlieb Memorial Hospital'
        AND o.latitude = '41.910205'
        AND o.longitude = '-87.8418095'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gottlieb Memorial Hospital'
        AND o.latitude = '41.910205'
        AND o.longitude = '-87.8418095'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gottlieb Memorial Hospital'
        AND o.latitude = '41.910205'
        AND o.longitude = '-87.8418095'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gottlieb Memorial Hospital'
        AND o.latitude = '41.910205'
        AND o.longitude = '-87.8418095'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gottlieb Memorial Hospital'
        AND o.latitude = '41.910205'
        AND o.longitude = '-87.8418095'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gottlieb Memorial Hospital'
        AND o.latitude = '41.910205'
        AND o.longitude = '-87.8418095'));

COMMIT;
