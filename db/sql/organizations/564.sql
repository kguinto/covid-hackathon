
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
      'Front Range Clinic',
      '1120 E. Elizabeth St. Building G, Suite 2
Fort Collins, CO 80524',
      'Fort Collins',
      'CO',
      '',
      'Unsure',
      '40.5748591',
      '-105.0567559'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Front Range Clinic'
        AND o.latitude = '40.5748591'
        AND o.longitude = '-105.0567559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Front Range Clinic'
        AND o.latitude = '40.5748591'
        AND o.longitude = '-105.0567559'));

COMMIT;
