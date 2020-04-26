
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
      'The Montefiore Home ',
      '1 David Myers Pkwy
Beachwood, OH 44122',
      'Beachwood',
      'OH',
      '1 David Myers Parkway',
      'No',
      '41.4964599',
      '-81.4866799'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Montefiore Home '
        AND o.latitude = '41.4964599'
        AND o.longitude = '-81.4866799'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Montefiore Home '
        AND o.latitude = '41.4964599'
        AND o.longitude = '-81.4866799'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Montefiore Home '
        AND o.latitude = '41.4964599'
        AND o.longitude = '-81.4866799'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Montefiore Home '
        AND o.latitude = '41.4964599'
        AND o.longitude = '-81.4866799'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Montefiore Home '
        AND o.latitude = '41.4964599'
        AND o.longitude = '-81.4866799'));

COMMIT;
