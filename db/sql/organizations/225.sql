
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
      'Akron Children''s Hospital',
      '3451 Saratoga Blvd
Stow, OH 44224',
      'Stow',
      'OH',
      'At doorstep of home, I''m a pediatrician, Dr. Natinder Saini, who will deliver to hospital and make sure it gets there since I work there',
      'Yes',
      '41.1505682',
      '-81.4074858'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Akron Children''s Hospital'
        AND o.latitude = '41.1505682'
        AND o.longitude = '-81.4074858'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Akron Children''s Hospital'
        AND o.latitude = '41.1505682'
        AND o.longitude = '-81.4074858'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Akron Children''s Hospital'
        AND o.latitude = '41.1505682'
        AND o.longitude = '-81.4074858'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Akron Children''s Hospital'
        AND o.latitude = '41.1505682'
        AND o.longitude = '-81.4074858'));

COMMIT;
