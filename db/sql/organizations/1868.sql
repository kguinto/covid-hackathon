
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
      'Montefiore Medical Center- Wakefield Campus',
      '600 E 233rd St
The Bronx, NY 10466',
      'New York - Bronx',
      'NY',
      'I am doing this on behalf of my father, a nurse at this hospital, without his knowledge. I''m sure you can just drop it off at the main entrance for deliveries and they will divide the PPE accordingly. ',
      'not sure, but please give them anyway. everything helps.',
      '40.8937532',
      '-73.8611242'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center- Wakefield Campus'
        AND o.latitude = '40.8937532'
        AND o.longitude = '-73.8611242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center- Wakefield Campus'
        AND o.latitude = '40.8937532'
        AND o.longitude = '-73.8611242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center- Wakefield Campus'
        AND o.latitude = '40.8937532'
        AND o.longitude = '-73.8611242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center- Wakefield Campus'
        AND o.latitude = '40.8937532'
        AND o.longitude = '-73.8611242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center- Wakefield Campus'
        AND o.latitude = '40.8937532'
        AND o.longitude = '-73.8611242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center- Wakefield Campus'
        AND o.latitude = '40.8937532'
        AND o.longitude = '-73.8611242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center- Wakefield Campus'
        AND o.latitude = '40.8937532'
        AND o.longitude = '-73.8611242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center- Wakefield Campus'
        AND o.latitude = '40.8937532'
        AND o.longitude = '-73.8611242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center- Wakefield Campus'
        AND o.latitude = '40.8937532'
        AND o.longitude = '-73.8611242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center- Wakefield Campus'
        AND o.latitude = '40.8937532'
        AND o.longitude = '-73.8611242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('non-ICU nurses are being floated to aid in the fight against COVID-19',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center- Wakefield Campus'
        AND o.latitude = '40.8937532'
        AND o.longitude = '-73.8611242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('so they should be protected since this is not their normal area of work.',
    (SELECT id FROM organizations o
      WHERE o.name = 'Montefiore Medical Center- Wakefield Campus'
        AND o.latitude = '40.8937532'
        AND o.longitude = '-73.8611242'));

COMMIT;
