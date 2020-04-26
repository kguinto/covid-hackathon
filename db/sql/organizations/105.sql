
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
      'Metropolitan Hospital',
      '1901 1st Avenue
New York, NY 10029',
      'New York - Manhattan',
      'NY',
      'In between 1st and 2nd ave is the entrance to the ER. Pull into there around back where the ambulances go and someone will come meet you outside. Please call 415-307-1562 for further information or to schedule donations. ',
      'TBD',
      '40.7852328',
      '-73.945029'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Metropolitan Hospital'
        AND o.latitude = '40.7852328'
        AND o.longitude = '-73.945029'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Metropolitan Hospital'
        AND o.latitude = '40.7852328'
        AND o.longitude = '-73.945029'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Metropolitan Hospital'
        AND o.latitude = '40.7852328'
        AND o.longitude = '-73.945029'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Metropolitan Hospital'
        AND o.latitude = '40.7852328'
        AND o.longitude = '-73.945029'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Metropolitan Hospital'
        AND o.latitude = '40.7852328'
        AND o.longitude = '-73.945029'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Metropolitan Hospital'
        AND o.latitude = '40.7852328'
        AND o.longitude = '-73.945029'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Metropolitan Hospital'
        AND o.latitude = '40.7852328'
        AND o.longitude = '-73.945029'));

COMMIT;
