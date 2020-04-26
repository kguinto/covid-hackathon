
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
      'Inova Schar Cancer Institute - Pediatric Oncology Infusion',
      '8081 Innovation Park Dr
Fairfax, VA 22031',
      'Fairfax',
      'VA',
      '',
      'Not sure',
      '38.8628247',
      '-77.2233473'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Schar Cancer Institute - Pediatric Oncology Infusion'
        AND o.latitude = '38.8628247'
        AND o.longitude = '-77.2233473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Schar Cancer Institute - Pediatric Oncology Infusion'
        AND o.latitude = '38.8628247'
        AND o.longitude = '-77.2233473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Schar Cancer Institute - Pediatric Oncology Infusion'
        AND o.latitude = '38.8628247'
        AND o.longitude = '-77.2233473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Schar Cancer Institute - Pediatric Oncology Infusion'
        AND o.latitude = '38.8628247'
        AND o.longitude = '-77.2233473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Schar Cancer Institute - Pediatric Oncology Infusion'
        AND o.latitude = '38.8628247'
        AND o.longitude = '-77.2233473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Schar Cancer Institute - Pediatric Oncology Infusion'
        AND o.latitude = '38.8628247'
        AND o.longitude = '-77.2233473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Schar Cancer Institute - Pediatric Oncology Infusion'
        AND o.latitude = '38.8628247'
        AND o.longitude = '-77.2233473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Schar Cancer Institute - Pediatric Oncology Infusion'
        AND o.latitude = '38.8628247'
        AND o.longitude = '-77.2233473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Schar Cancer Institute - Pediatric Oncology Infusion'
        AND o.latitude = '38.8628247'
        AND o.longitude = '-77.2233473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inova Schar Cancer Institute - Pediatric Oncology Infusion'
        AND o.latitude = '38.8628247'
        AND o.longitude = '-77.2233473'));

COMMIT;
