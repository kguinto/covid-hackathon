
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
      'Children''s Hospital at Montefiore',
      '222 E 34th St #2420
New York, NY 10016',
      'NEW YORK',
      'NY',
      'Residential address of doctor. Give to doorman. ',
      'Yes',
      '40.7449717',
      '-73.9770424'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital at Montefiore'
        AND o.latitude = '40.7449717'
        AND o.longitude = '-73.9770424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital at Montefiore'
        AND o.latitude = '40.7449717'
        AND o.longitude = '-73.9770424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital at Montefiore'
        AND o.latitude = '40.7449717'
        AND o.longitude = '-73.9770424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital at Montefiore'
        AND o.latitude = '40.7449717'
        AND o.longitude = '-73.9770424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital at Montefiore'
        AND o.latitude = '40.7449717'
        AND o.longitude = '-73.9770424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital at Montefiore'
        AND o.latitude = '40.7449717'
        AND o.longitude = '-73.9770424'));

COMMIT;
