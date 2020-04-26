
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
      'Heart Land Supports, LLC',
      '313 Muse St
Newton, KS 67114',
      'Newton',
      'KS',
      'On deck',
      'Yes',
      '38.0398839',
      '-97.3402207'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heart Land Supports, LLC'
        AND o.latitude = '38.0398839'
        AND o.longitude = '-97.3402207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heart Land Supports, LLC'
        AND o.latitude = '38.0398839'
        AND o.longitude = '-97.3402207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heart Land Supports, LLC'
        AND o.latitude = '38.0398839'
        AND o.longitude = '-97.3402207'));

COMMIT;
