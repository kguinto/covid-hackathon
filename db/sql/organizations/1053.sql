
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
      'Spectrum Health Systems',
      '200 E Main St
Milford, MA 01757',
      'Milford',
      'MA',
      'ATTN: Jane Reardon ',
      'Yes',
      '42.1510435',
      '-71.4984089'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health Systems'
        AND o.latitude = '42.1510435'
        AND o.longitude = '-71.4984089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health Systems'
        AND o.latitude = '42.1510435'
        AND o.longitude = '-71.4984089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health Systems'
        AND o.latitude = '42.1510435'
        AND o.longitude = '-71.4984089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health Systems'
        AND o.latitude = '42.1510435'
        AND o.longitude = '-71.4984089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health Systems'
        AND o.latitude = '42.1510435'
        AND o.longitude = '-71.4984089'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Spectrum Health Systems'
        AND o.latitude = '42.1510435'
        AND o.longitude = '-71.4984089'));

COMMIT;
