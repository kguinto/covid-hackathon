
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
      'Desert Care Network',
      'Email for Instructions',
      'Palm Desert',
      'CA',
      'Contact James Phillips james.phillips2@tenethealth.com',
      'Contact',
      'N/A',
      'N/A'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Desert Care Network'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Desert Care Network'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Desert Care Network'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Desert Care Network'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Desert Care Network'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Desert Care Network'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Desert Care Network'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Desert Care Network'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Desert Care Network'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Desert Care Network'
        AND o.latitude = 'N/A'
        AND o.longitude = 'N/A'));

COMMIT;
