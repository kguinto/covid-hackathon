
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
      'Fireside Health Care Center',
      '947 3rd St
Santa Monica, CA 90403',
      'Santa Monica',
      'CA',
      'ATTN: Administrator Janees Nunez',
      'Yes',
      '34.0214063',
      '-118.5024079'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fireside Health Care Center'
        AND o.latitude = '34.0214063'
        AND o.longitude = '-118.5024079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fireside Health Care Center'
        AND o.latitude = '34.0214063'
        AND o.longitude = '-118.5024079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fireside Health Care Center'
        AND o.latitude = '34.0214063'
        AND o.longitude = '-118.5024079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fireside Health Care Center'
        AND o.latitude = '34.0214063'
        AND o.longitude = '-118.5024079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fireside Health Care Center'
        AND o.latitude = '34.0214063'
        AND o.longitude = '-118.5024079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fireside Health Care Center'
        AND o.latitude = '34.0214063'
        AND o.longitude = '-118.5024079'));

COMMIT;
