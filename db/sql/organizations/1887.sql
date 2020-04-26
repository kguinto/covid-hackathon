
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
      'Bay Area Hosptial',
      '1775 Thompson Rd
Coos Bay, OR 97420',
      'Coos Bay',
      'OR',
      'Contact Brian Bowers - Logistics Section Chief 541-404-3343',
      'Yes',
      '43.3835039',
      '-124.2329295'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Area Hosptial'
        AND o.latitude = '43.3835039'
        AND o.longitude = '-124.2329295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Area Hosptial'
        AND o.latitude = '43.3835039'
        AND o.longitude = '-124.2329295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Area Hosptial'
        AND o.latitude = '43.3835039'
        AND o.longitude = '-124.2329295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Area Hosptial'
        AND o.latitude = '43.3835039'
        AND o.longitude = '-124.2329295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Area Hosptial'
        AND o.latitude = '43.3835039'
        AND o.longitude = '-124.2329295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Area Hosptial'
        AND o.latitude = '43.3835039'
        AND o.longitude = '-124.2329295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Area Hosptial'
        AND o.latitude = '43.3835039'
        AND o.longitude = '-124.2329295'));

COMMIT;
