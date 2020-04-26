
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
      'Wilshire Surgery Center',
      '8670 Wilshire Blvd #300
Beverly Hills, CA 90211',
      'beverly hills',
      'CA',
      'mailing address ATTN Dr Ross Ravin',
      'No',
      '34.0660228',
      '-118.3808454'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wilshire Surgery Center'
        AND o.latitude = '34.0660228'
        AND o.longitude = '-118.3808454'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wilshire Surgery Center'
        AND o.latitude = '34.0660228'
        AND o.longitude = '-118.3808454'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wilshire Surgery Center'
        AND o.latitude = '34.0660228'
        AND o.longitude = '-118.3808454'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wilshire Surgery Center'
        AND o.latitude = '34.0660228'
        AND o.longitude = '-118.3808454'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wilshire Surgery Center'
        AND o.latitude = '34.0660228'
        AND o.longitude = '-118.3808454'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wilshire Surgery Center'
        AND o.latitude = '34.0660228'
        AND o.longitude = '-118.3808454'));

COMMIT;
