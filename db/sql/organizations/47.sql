
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
      'Michigan Medicine -- St. Joseph Mercy',
      '1500 E Medical Center Dr
Ann Arbor, MI 48109',
      'Ann Arbor',
      'MI',
      'Dock 5: Attn: UMH Dock receiving team. Please email umh-dock-receivingteam@medumich.edu that there is inbound product.',
      'Unknown',
      '42.2849096',
      '-83.7333623'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine -- St. Joseph Mercy'
        AND o.latitude = '42.2849096'
        AND o.longitude = '-83.7333623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine -- St. Joseph Mercy'
        AND o.latitude = '42.2849096'
        AND o.longitude = '-83.7333623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine -- St. Joseph Mercy'
        AND o.latitude = '42.2849096'
        AND o.longitude = '-83.7333623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine -- St. Joseph Mercy'
        AND o.latitude = '42.2849096'
        AND o.longitude = '-83.7333623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('M4 viral media',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine -- St. Joseph Mercy'
        AND o.latitude = '42.2849096'
        AND o.longitude = '-83.7333623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPRs',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine -- St. Joseph Mercy'
        AND o.latitude = '42.2849096'
        AND o.longitude = '-83.7333623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine -- St. Joseph Mercy'
        AND o.latitude = '42.2849096'
        AND o.longitude = '-83.7333623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine -- St. Joseph Mercy'
        AND o.latitude = '42.2849096'
        AND o.longitude = '-83.7333623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('testing swabs',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine -- St. Joseph Mercy'
        AND o.latitude = '42.2849096'
        AND o.longitude = '-83.7333623'));

COMMIT;
