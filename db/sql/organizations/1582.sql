
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
      'Brush Country Nursing and Rehab',
      '6500 Brush Country Rd
Austin, TX 78749',
      'Austin',
      'TX',
      'Drop off to the front door. Please and thank you!',
      'No',
      '30.2248841',
      '-97.8417674'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brush Country Nursing and Rehab'
        AND o.latitude = '30.2248841'
        AND o.longitude = '-97.8417674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brush Country Nursing and Rehab'
        AND o.latitude = '30.2248841'
        AND o.longitude = '-97.8417674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brush Country Nursing and Rehab'
        AND o.latitude = '30.2248841'
        AND o.longitude = '-97.8417674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brush Country Nursing and Rehab'
        AND o.latitude = '30.2248841'
        AND o.longitude = '-97.8417674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brush Country Nursing and Rehab'
        AND o.latitude = '30.2248841'
        AND o.longitude = '-97.8417674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brush Country Nursing and Rehab'
        AND o.latitude = '30.2248841'
        AND o.longitude = '-97.8417674'));

COMMIT;
