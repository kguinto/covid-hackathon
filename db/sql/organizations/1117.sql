
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
      'Virginia Endoscopy Group',
      '2369 Staples Mill Rd
Richmond, VA 23230',
      'Richmond',
      'VA',
      '',
      'No',
      '37.5904629',
      '-77.49216'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Endoscopy Group'
        AND o.latitude = '37.5904629'
        AND o.longitude = '-77.49216'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Endoscopy Group'
        AND o.latitude = '37.5904629'
        AND o.longitude = '-77.49216'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Endoscopy Group'
        AND o.latitude = '37.5904629'
        AND o.longitude = '-77.49216'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Endoscopy Group'
        AND o.latitude = '37.5904629'
        AND o.longitude = '-77.49216'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Endoscopy Group'
        AND o.latitude = '37.5904629'
        AND o.longitude = '-77.49216'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Endoscopy Group'
        AND o.latitude = '37.5904629'
        AND o.longitude = '-77.49216'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Endoscopy Group'
        AND o.latitude = '37.5904629'
        AND o.longitude = '-77.49216'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Endoscopy Group'
        AND o.latitude = '37.5904629'
        AND o.longitude = '-77.49216'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometer Probe Covers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Endoscopy Group'
        AND o.latitude = '37.5904629'
        AND o.longitude = '-77.49216'));

COMMIT;
