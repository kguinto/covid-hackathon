
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
      'Wesley Health Centers',
      '522 San Pedro St
Los Angeles, CA 90013',
      'Los Angeles',
      'CA',
      'Attn: Paul Cha',
      'Yes',
      '34.0432489',
      '-118.2437768'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wesley Health Centers'
        AND o.latitude = '34.0432489'
        AND o.longitude = '-118.2437768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wesley Health Centers'
        AND o.latitude = '34.0432489'
        AND o.longitude = '-118.2437768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wesley Health Centers'
        AND o.latitude = '34.0432489'
        AND o.longitude = '-118.2437768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wesley Health Centers'
        AND o.latitude = '34.0432489'
        AND o.longitude = '-118.2437768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wesley Health Centers'
        AND o.latitude = '34.0432489'
        AND o.longitude = '-118.2437768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wesley Health Centers'
        AND o.latitude = '34.0432489'
        AND o.longitude = '-118.2437768'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wesley Health Centers'
        AND o.latitude = '34.0432489'
        AND o.longitude = '-118.2437768'));

COMMIT;
