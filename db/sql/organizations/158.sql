
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
      'Bayfront Health ER Pinellas Park',
      '3070 Grand Ave
Pinellas Park, FL 33781',
      'Pinellas Park',
      'FL',
      'Unused masks only. Ship w/Attn: Dr. Vanessa Velazquez-Ruiz.',
      'Only if new.',
      '27.8470911',
      '-82.6771605'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayfront Health ER Pinellas Park'
        AND o.latitude = '27.8470911'
        AND o.longitude = '-82.6771605'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayfront Health ER Pinellas Park'
        AND o.latitude = '27.8470911'
        AND o.longitude = '-82.6771605'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayfront Health ER Pinellas Park'
        AND o.latitude = '27.8470911'
        AND o.longitude = '-82.6771605'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayfront Health ER Pinellas Park'
        AND o.latitude = '27.8470911'
        AND o.longitude = '-82.6771605'));

COMMIT;
