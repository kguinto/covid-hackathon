
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
      'Dallas VA Medical Center',
      '4500 S Lancaster Rd
Dallas, TX 75216',
      'Dallas',
      'TX',
      'Main entrance drop off. Can also contact giving@utsouthwestern.edu',
      'Yes',
      '32.693296',
      '-96.7915235'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dallas VA Medical Center'
        AND o.latitude = '32.693296'
        AND o.longitude = '-96.7915235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dallas VA Medical Center'
        AND o.latitude = '32.693296'
        AND o.longitude = '-96.7915235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dallas VA Medical Center'
        AND o.latitude = '32.693296'
        AND o.longitude = '-96.7915235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dallas VA Medical Center'
        AND o.latitude = '32.693296'
        AND o.longitude = '-96.7915235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dallas VA Medical Center'
        AND o.latitude = '32.693296'
        AND o.longitude = '-96.7915235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dallas VA Medical Center'
        AND o.latitude = '32.693296'
        AND o.longitude = '-96.7915235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dallas VA Medical Center'
        AND o.latitude = '32.693296'
        AND o.longitude = '-96.7915235'));

COMMIT;
