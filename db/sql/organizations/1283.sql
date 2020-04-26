
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
      'All Pointe HomeCare',
      '675 W Johnson Ave
Cheshire, CT 06410',
      'Cheshire',
      'CT',
      '675 West Johnson Ave',
      'Yes',
      '41.5567332',
      '-72.9126044'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'All Pointe HomeCare'
        AND o.latitude = '41.5567332'
        AND o.longitude = '-72.9126044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'All Pointe HomeCare'
        AND o.latitude = '41.5567332'
        AND o.longitude = '-72.9126044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'All Pointe HomeCare'
        AND o.latitude = '41.5567332'
        AND o.longitude = '-72.9126044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'All Pointe HomeCare'
        AND o.latitude = '41.5567332'
        AND o.longitude = '-72.9126044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'All Pointe HomeCare'
        AND o.latitude = '41.5567332'
        AND o.longitude = '-72.9126044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'All Pointe HomeCare'
        AND o.latitude = '41.5567332'
        AND o.longitude = '-72.9126044'));

COMMIT;
