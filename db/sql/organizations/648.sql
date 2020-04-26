
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
      'St. Mary''s Health Care System',
      '1230 Baxter St
Athens, GA 30606',
      'Athens',
      'GA',
      'Attn: Bradford Burgess',
      'No',
      '33.9472661',
      '-83.4058492'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Mary''s Health Care System'
        AND o.latitude = '33.9472661'
        AND o.longitude = '-83.4058492'));

COMMIT;
