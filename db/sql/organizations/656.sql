
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
      'Codman Square Health Center',
      '637 Washington Street
Boston, MA 02124',
      'Boston',
      'MA',
      'Please make deliveries at the loading dock at 637 Washington Street (accessed via Withington Street), ATTN: Frank Byrne',
      'Yes, all items will be inspected for quality.',
      '42.289369',
      '-71.0719691'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Codman Square Health Center'
        AND o.latitude = '42.289369'
        AND o.longitude = '-71.0719691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Codman Square Health Center'
        AND o.latitude = '42.289369'
        AND o.longitude = '-71.0719691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Codman Square Health Center'
        AND o.latitude = '42.289369'
        AND o.longitude = '-71.0719691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Codman Square Health Center'
        AND o.latitude = '42.289369'
        AND o.longitude = '-71.0719691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Codman Square Health Center'
        AND o.latitude = '42.289369'
        AND o.longitude = '-71.0719691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Codman Square Health Center'
        AND o.latitude = '42.289369'
        AND o.longitude = '-71.0719691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Codman Square Health Center'
        AND o.latitude = '42.289369'
        AND o.longitude = '-71.0719691'));

COMMIT;
