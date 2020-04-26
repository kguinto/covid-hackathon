
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
      'UnityPoint Health - Allen Hospital ',
      '1825 Logan Ave
Waterloo, IA 50703',
      'Waterloo ',
      'IA',
      'Attn: Carrie Wilkinson ',
      'Unknown ',
      '42.5266507',
      '-92.3395639'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health - Allen Hospital '
        AND o.latitude = '42.5266507'
        AND o.longitude = '-92.3395639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health - Allen Hospital '
        AND o.latitude = '42.5266507'
        AND o.longitude = '-92.3395639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health - Allen Hospital '
        AND o.latitude = '42.5266507'
        AND o.longitude = '-92.3395639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health - Allen Hospital '
        AND o.latitude = '42.5266507'
        AND o.longitude = '-92.3395639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health - Allen Hospital '
        AND o.latitude = '42.5266507'
        AND o.longitude = '-92.3395639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health - Allen Hospital '
        AND o.latitude = '42.5266507'
        AND o.longitude = '-92.3395639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health - Allen Hospital '
        AND o.latitude = '42.5266507'
        AND o.longitude = '-92.3395639'));

COMMIT;
