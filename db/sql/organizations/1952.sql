
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
      'Childrens Hospital of Montefiore ',
      '3415 Bainbridge Ave
The Bronx, NY 10467',
      'Bronx ',
      'NY',
      'Curbside',
      'Yes',
      '40.880273',
      '-73.8791699'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Childrens Hospital of Montefiore '
        AND o.latitude = '40.880273'
        AND o.longitude = '-73.8791699'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Childrens Hospital of Montefiore '
        AND o.latitude = '40.880273'
        AND o.longitude = '-73.8791699'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Childrens Hospital of Montefiore '
        AND o.latitude = '40.880273'
        AND o.longitude = '-73.8791699'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Childrens Hospital of Montefiore '
        AND o.latitude = '40.880273'
        AND o.longitude = '-73.8791699'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Childrens Hospital of Montefiore '
        AND o.latitude = '40.880273'
        AND o.longitude = '-73.8791699'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Childrens Hospital of Montefiore '
        AND o.latitude = '40.880273'
        AND o.longitude = '-73.8791699'));

COMMIT;
