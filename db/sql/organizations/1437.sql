
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
      'Garland Behavioral Hospital ',
      '2300 Marie Curie Blvd 5th floor
Garland, TX 75042',
      'Garland',
      'TX',
      '2300 Marie Curie Blvd, 5th floor, Garland, TX ATTN: Victoria Tortorelli ',
      'Yes',
      '32.9193446',
      '-96.6616404'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garland Behavioral Hospital '
        AND o.latitude = '32.9193446'
        AND o.longitude = '-96.6616404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garland Behavioral Hospital '
        AND o.latitude = '32.9193446'
        AND o.longitude = '-96.6616404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garland Behavioral Hospital '
        AND o.latitude = '32.9193446'
        AND o.longitude = '-96.6616404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garland Behavioral Hospital '
        AND o.latitude = '32.9193446'
        AND o.longitude = '-96.6616404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garland Behavioral Hospital '
        AND o.latitude = '32.9193446'
        AND o.longitude = '-96.6616404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garland Behavioral Hospital '
        AND o.latitude = '32.9193446'
        AND o.longitude = '-96.6616404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garland Behavioral Hospital '
        AND o.latitude = '32.9193446'
        AND o.longitude = '-96.6616404'));

COMMIT;
