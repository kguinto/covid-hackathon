
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
      'Redwood Interventional Radiology',
      '121 Sotoyome St
Santa Rosa, CA 95405',
      'Santa Rosa',
      'CA',
      'ATTN: Lesley Field, PA-C or Dianne Davis',
      'Yes',
      '38.4422133',
      '-122.7018128'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redwood Interventional Radiology'
        AND o.latitude = '38.4422133'
        AND o.longitude = '-122.7018128'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redwood Interventional Radiology'
        AND o.latitude = '38.4422133'
        AND o.longitude = '-122.7018128'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redwood Interventional Radiology'
        AND o.latitude = '38.4422133'
        AND o.longitude = '-122.7018128'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redwood Interventional Radiology'
        AND o.latitude = '38.4422133'
        AND o.longitude = '-122.7018128'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redwood Interventional Radiology'
        AND o.latitude = '38.4422133'
        AND o.longitude = '-122.7018128'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redwood Interventional Radiology'
        AND o.latitude = '38.4422133'
        AND o.longitude = '-122.7018128'));

COMMIT;
